import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../utils/text-style.dart';

class ContactHive extends StatefulWidget {
  @override
  State<ContactHive> createState() => _ContactHiveState();
}

class _ContactHiveState extends State<ContactHive> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  var box = Hive.box('contactBook');
  List<Map<String, dynamic>> contacts = [];

  @override
  void initState() {
    refresh_or_read_contact();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Contacts"),
          actions: [
            IconButton(
                onPressed: () {
                  showContactBox(null);
                },
                icon: const Icon(Icons.person_add))
          ],
        ),
        body: contacts.isEmpty
            ? Center(
                child: Text(
                  "No Contacts",
                  style: MyTextThemes.textheadingg,
                ),
              )
            : ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(
                        contact['name'],
                        style: MyTextThemes.bodyTextStyle,
                      ),
                      subtitle: Text(contact['number']),
                      trailing: Wrap(
                        children: [
                          IconButton(
                              onPressed: () {
                                showContactBox(contact['key']);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                //box.delete(contact['key']);
                                deleteContact(contact['key']);
                              },
                              icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                  );
                }));
  }

  void showContactBox(int? key) {
    if (key != null) {
      final savedContact =
          contacts.firstWhere((element) => element["key"] == key);
      nameController.text = savedContact['name'];
      phoneController.text = savedContact['number'];
    }
    // similar to id in sqflite
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(key == null ? "Create Contact" : 'Update Contact'),
            content: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        hintText: "Name", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                        hintText: "Phone Number", border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  String name = nameController.text;
                  String number = phoneController.text;
                  if (key == null) {
                    createContact({'contactName': name, 'phoneNumber': number});
                  }
                  if (key != null) {
                    updateContact(key, {
                      'contactName': nameController.text,
                      "phoneNumber": phoneController.text
                    });
                  }
                  nameController.clear();
                  phoneController.clear();
                  Navigator.pop(context);
                },
                child: Text(key == null ? "Create Contact" : 'Update Contact'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              )
            ],
          );
        });
  }

  void createContact(Map<String, String> contact) {
    box.add(contact);
    refresh_or_read_contact(); // update list after adding a new contact
  }

  void refresh_or_read_contact() {
    final contact_from_hive = box.keys.map((e) {
      //fetch all the keys from hive box in ascending order
      //and add each map to single contact
      final singleContact = box.get(e);
      return {
        'key': e,
        'name': singleContact['contactName'],
        'number': singleContact['phoneNumber']
      };
    }).toList();
    setState(() {
      contacts = contact_from_hive.reversed.toList();
    });
  }

  void updateContact(int key, Map<String, String> updateContact) {
    box.put(key, updateContact);
    refresh_or_read_contact();
  }

  void deleteContact(contact) {
    box.delete(contact);
    refresh_or_read_contact();
  }
}
