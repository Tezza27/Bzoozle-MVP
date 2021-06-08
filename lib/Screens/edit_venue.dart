import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditVenueScreen extends StatefulWidget {
  static const String routeName = '/edit';

  @override
  _EditVenueScreenState createState() => _EditVenueScreenState();
}

class _EditVenueScreenState extends State<EditVenueScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text("Edit Venue"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Venue Name",
                    hintText: 'Enter venue name',
                  ),
                  onChanged: (value) => venueProvider.changeName(value),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the venue name';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Host Building",
                      hintText:
                          'Which casino/mall is the venue located \n (leave blank if none)',
                    ),
                    onChanged: (value) =>
                        venueProvider.changeHostBuilding(value),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Venue Description",
                      hintText: 'Enter a description of the venue',
                    ),
                    maxLines: 40,
                    minLines: 2,
                    onChanged: (value) =>
                        venueProvider.changeDescription(value),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a venue description';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState!.validate()) {
                          venueProvider.saveVenue();
                          Navigator.of(context).pop();
                          _formKey.currentState?.reset();
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
