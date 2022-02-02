import 'package:flutter/material.dart';
import './db/db_helper.dart';
import './model/note.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<NotesModel>> notesList;
  DbHelper? dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DbHelper();
    loadData();
  }

  loadData() async {
    notesList = dbHelper!.getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotesApp'),
      ),
      body: FutureBuilder(
        future: notesList,
        builder:
            (BuildContext context, AsyncSnapshot<List<NotesModel>> snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        print('update');
                      },
                      child: Dismissible(
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.delete_forever),
                        ),
                        key: ValueKey<int>(snapshot.data![index].id),
                        onDismissed: (DismissDirection direction) async {
                          setState(() {
                            //
                          });
                        },
                        child: Container(
                          child: Card(
                            child: ListTile(
                              horizontalTitleGap: 3,
                              minVerticalPadding: 5,
                              contentPadding: EdgeInsets.all(7),
                              title: Text(
                                snapshot.data![index].title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                snapshot.data![index].description.toString(),
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dbHelper!
              .insert(
                NotesModel(
                    id: 1,
                    title: 'some title',
                    description: 'some description',
                    email: 'some email'),
              )
              .then((value) => print('added'))
              .onError((error, stackTrace) => 'error' + error.toString());
          setState(() {
            notesList = dbHelper!.getNotes();
          });
        },
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
