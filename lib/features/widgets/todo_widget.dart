import 'package:flutter/material.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({super.key});

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  final List<Map<String, dynamic>> dataList = [
    {
      'calendar': Icons.calendar_month_outlined,
      'waktu': 'Today',
      'time': Icons.watch_later_outlined,
      'jam': '10.00 WIB',
      'judul': 'Buat API - Gigades',
    },
    {
      'calendar': Icons.calendar_month_outlined,
      'waktu': 'Today',
      'time': Icons.watch_later_outlined,
      'jam': '12.00 WIB',
      'judul': 'Slicing UI - Gigades',
    },
    {
      'calendar': Icons.calendar_month_outlined,
      'waktu': 'Today',
      'time': Icons.watch_later_outlined,
      'jam': '10.00 WIB',
      'judul': 'Fetch Data - Gigades',
    },
    {
      'calendar': Icons.calendar_month_outlined,
      'waktu': 'Today',
      'time': Icons.watch_later_outlined,
      'jam': '10.00 WIB',
      'judul': 'Slicing UI - Oncard',
    },
    {
      'calendar': Icons.calendar_month_outlined,
      'waktu': 'Today',
      'time': Icons.watch_later_outlined,
      'jam': '10.00 WIB',
      'judul': 'Fetch Data - Oncard',
    },
    {
      'calendar': Icons.calendar_month_outlined,
      'waktu': 'Today',
      'time': Icons.watch_later_outlined,
      'jam': '10.00 WIB',
      'judul': 'asdasd',
    },
    {
      'calendar': Icons.calendar_month_outlined,
      'waktu': 'Today',
      'time': Icons.watch_later_outlined,
      'jam': '10.00 WIB',
      'judul': 'qwesda',
    },
  ];

  late List<bool> isCheckedList;

  @override
  void initState() {
    super.initState();
    isCheckedList = List.generate(dataList.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListView.separated(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final item = dataList[index];
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCheckedList[index] = !isCheckedList[index];
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            isCheckedList[index]
                                ? Color(0xFFb4c4fe)
                                : Colors.white,
                        border: Border.all(
                          color:
                              isCheckedList[index]
                                  ? Color(0xFFb4c4fe)
                                  : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child:
                          isCheckedList[index]
                              ? const Icon(
                                Icons.check,
                                size: 16,
                                color: Colors.white,
                              )
                              : null,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            item['calendar'],
                            color: Colors.blueGrey[300],
                            size: 16,
                          ),
                          const SizedBox(width: 1),
                          Text(
                            item['waktu'],
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blueGrey[300],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Icon(
                            item['time'],
                            color: Colors.blueGrey[300],
                            size: 16,
                          ),
                          const SizedBox(width: 1),
                          Text(
                            item['jam'],
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blueGrey[300],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        item['judul'],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration:
                              isCheckedList[index]
                                  ? TextDecoration.lineThrough
                                  : null,
                          color:
                              isCheckedList[index]
                                  ? Colors.blueGrey[300]
                                  : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
      ),
    );
  }
}
