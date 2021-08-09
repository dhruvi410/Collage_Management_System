import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'student_zone.dart';

final Map<DateTime, List> _holidays = {
  DateTime(2021, 1, 1): ['New Year\'s Day'],
  DateTime(2021, 1, 12): ['Birthday of Swami Vivekananda'],
  DateTime(2021, 1, 23): ['Birthday of Netaji'],
  DateTime(2021, 1, 26): ['Republic Day'],
  DateTime(2021, 1, 30): ['Saraswati Puja'],
  DateTime(2021, 1, 31): ['Saraswati Puja'],
  DateTime(2021, 2, 21): ['Shivratri'],
  DateTime(2021, 3, 9): ['Doljatra'],
  DateTime(2021, 3, 10): ['Holi'],
  DateTime(2021, 3, 23): ['Shab-e-Meraj'],
  DateTime(2021, 4, 5): ['University Foundation Day'],
  DateTime(2021, 4, 9): ['Shab-e-Barat'],
  DateTime(2021, 4, 10): ['Good Friday'],
  DateTime(2021, 4, 14): ['Bengali New Year\'s Day'],
  DateTime(2021, 5, 1): ['Mayday'],
  DateTime(2021, 5, 7): ['Buddha Purnima'],
  DateTime(2021, 5, 8): ['Birthday of Rabindra Nath Tagore'],
  DateTime(2021, 5, 21): ['Shab-e-Qadr'],
  DateTime(2021, 5, 22): ['Jummatul-Wada'],
  DateTime(2021, 5, 24): ['Eid-ul-Fitr'],
  DateTime(2021, 5, 25): ['Eid-ul-Fitr'],
  DateTime(2021, 5, 26): ['Eid-ul-Fitr'],
  DateTime(2021, 7, 31): ['Eid-ul-Azha'],
  DateTime(2021, 8, 1): ['Eid-ul-Azha'],
  DateTime(2021, 8, 2): ['Eid-ul-Azha'],
  DateTime(2021, 8, 3): ['Eid-ul-Azha'],
  DateTime(2021, 8, 11): ['Janmastami'],
  DateTime(2021, 8, 15): ['Independance Day'],
  DateTime(2021, 8, 30): ['Muharram'],
  DateTime(2021, 9, 17): ['Mahalaya'],
  DateTime(2021, 10, 2): ['Birthday of Gandhiji'],
  DateTime(2021, 10, 7): ['Calcutta Madrasah Foundation Day'],
  DateTime(2021, 10, 14): ['Akhri Chahar Shambah'],
  DateTime(2021, 10, 19): ['Puja Holiday\'s'],
  DateTime(2021, 10, 20): ['Puja Holiday\'s'],
  DateTime(2021, 10, 21): ['Puja Holiday\'s'],
  DateTime(2021, 10, 22): ['Puja Holiday\'s'],
  DateTime(2021, 10, 23): ['Puja Holiday\'s'],
  DateTime(2021, 10, 24): ['Puja Holiday\'s'],
  DateTime(2021, 10, 25): ['Puja Holiday\'s'],
  DateTime(2021, 10, 26): ['Puja Holiday\'s'],
  DateTime(2021, 10, 27): ['Puja Holiday\'s'],
  DateTime(2021, 10, 28): ['Puja Holiday\'s'],
  DateTime(2021, 10, 29): ['Puja Holiday\'s'],
  DateTime(2021, 10, 30): ['Puja Holiday\'s'],
  DateTime(2021, 11, 14): ['Kali Puja'],
  DateTime(2021, 11, 16): ['Bhatriditya'],
  DateTime(2021, 11, 17): ['Bhatriditya'],
  DateTime(2021, 11, 19): ['Chaat Puja'],
  DateTime(2021, 11, 20): ['Chaat Puja'],
  DateTime(2021, 11, 27): ['Fateha-Yez-Daham'],
  DateTime(2021, 11, 30): ['Birthday of Guru Nanak'],
  DateTime(2021, 12, 25): ['Christmas'],
};

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  Map<DateTime, List> _events;
  List _selectedEvents;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    _events = {
      DateTime(2021, 1, 1): ['New Year\'s Day'],
      DateTime(2021, 1, 12): ['Birthday of Swami Vivekananda'],
      DateTime(2021, 1, 23): ['Birthday of Netaji'],
      DateTime(2021, 1, 26): ['Republic Day'],
      DateTime(2021, 1, 30): ['Saraswati Puja'],
      DateTime(2021, 1, 31): ['Saraswati Puja'],
      DateTime(2021, 2, 21): ['Shivratri'],
      DateTime(2021, 3, 9): ['Doljatra'],
      DateTime(2021, 3, 10): ['Holi'],
      DateTime(2021, 3, 23): ['Shab-e-Meraj'],
      DateTime(2021, 4, 5): ['University Foundation Day'],
      DateTime(2021, 4, 9): ['Shab-e-Barat'],
      DateTime(2021, 4, 10): ['Good Friday'],
      DateTime(2021, 4, 14): ['Bengali New Year\'s Day'],
      DateTime(2021, 5, 1): ['Mayday'],
      DateTime(2021, 5, 7): ['Buddha Purnima'],
      DateTime(2021, 5, 8): ['Birthday of Rabindra Nath Tagore'],
      DateTime(2021, 5, 21): ['Shab-e-Qadr'],
      DateTime(2021, 5, 22): ['Jummatul-Wada'],
      DateTime(2021, 5, 24): ['Eid-ul-Fitr'],
      DateTime(2021, 5, 25): ['Eid-ul-Fitr'],
      DateTime(2021, 5, 26): ['Eid-ul-Fitr'],
      DateTime(2021, 7, 31): ['Eid-ul-Azha'],
      DateTime(2021, 8, 1): ['Eid-ul-Azha'],
      DateTime(2021, 8, 2): ['Eid-ul-Azha'],
      DateTime(2021, 8, 3): ['Eid-ul-Azha'],
      DateTime(2021, 8, 11): ['Janmastami'],
      DateTime(2021, 8, 15): ['Independance Day'],
      DateTime(2021, 8, 30): ['Muharram'],
      DateTime(2021, 9, 17): ['Mahalaya'],
      DateTime(2021, 10, 2): ['Birthday of Gandhiji'],
      DateTime(2021, 10, 7): ['Calcutta Madrasah Foundation Day'],
      DateTime(2021, 10, 14): ['Akhri Chahar Shambah'],
      DateTime(2021, 10, 19): ['Puja Holiday\'s'],
      DateTime(2021, 10, 20): ['Puja Holiday\'s'],
      DateTime(2021, 10, 21): ['Puja Holiday\'s'],
      DateTime(2021, 10, 22): ['Puja Holiday\'s'],
      DateTime(2021, 10, 23): ['Puja Holiday\'s'],
      DateTime(2021, 10, 24): ['Puja Holiday\'s'],
      DateTime(2021, 10, 25): ['Puja Holiday\'s'],
      DateTime(2021, 10, 26): ['Puja Holiday\'s'],
      DateTime(2021, 10, 27): ['Puja Holiday\'s'],
      DateTime(2021, 10, 28): ['Puja Holiday\'s'],
      DateTime(2021, 10, 29): ['Puja Holiday\'s'],
      DateTime(2021, 10, 30): ['Puja Holiday\'s'],
      DateTime(2021, 11, 14): ['Kali Puja'],
      DateTime(2021, 11, 16): ['Bhatriditya'],
      DateTime(2021, 11, 17): ['Bhatriditya'],
      DateTime(2021, 11, 19): ['Chaat Puja'],
      DateTime(2021, 11, 20): ['Chaat Puja'],
      DateTime(2021, 11, 27): ['Fateha-Yez-Daham'],
      DateTime(2021, 11, 30): ['Birthday of Guru Nanak'],
      DateTime(2021, 12, 25): ['Christmas'],
    };
    _selectedEvents = _events[_selectedDay] ?? [];
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events) {
    setState(() {
      _selectedEvents = events;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return StudentZone();
              }));
            },
            child: Icon(Icons.arrow_back, size: 30,),
          ),
          backgroundColor: Color(0xff002c51),
          centerTitle: true,
          title: Text(
            'ACADEMIC CALENDAR',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,),
            _buildTableCalendar(),
            const SizedBox(height: 10.0),
            Expanded(child: _buildEventList()),
          ],
        ),
      ),
    );
  }

  Widget _buildTableCalendar() {
    return TableCalendar(
        availableCalendarFormats: const {CalendarFormat.month: 'Month'},
        calendarController: _calendarController,
        events: _events,
        holidays: _holidays,
        startingDayOfWeek: StartingDayOfWeek.monday,
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          todayColor: Theme.of(context).primaryColor,
          holidayStyle: TextStyle().copyWith(color: Colors.red[900]),
          markersColor: Theme.of(context).primaryColor,
          todayStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.red[900]),
        ),
        headerStyle: HeaderStyle(
          centerHeaderTitle: true,
          formatButtonTextStyle:
          TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
          formatButtonDecoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        builders: CalendarBuilders(
          selectedDayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:Color(0xff002c51),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          todayDayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff53c0c7),
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      onDaySelected: (date, events, _) {
        setState(() {
          _selectedEvents = events;
        });
      },


    );
  }

  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map((event) => Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.2),
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.all(10.0),
        child: ListTile(
          title: Center(child: Text(event.toString())),
          onTap: () => print('$event tapped!'),
        ),
      ))
          .toList(),
    );
  }
}
