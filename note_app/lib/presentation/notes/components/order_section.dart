import 'package:flutter/material.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';

class OrderSection extends StatelessWidget {
  const OrderSection(
      {super.key, required this.noteOrder, required this.onOrderChanged});

  //라디오 상태 표현할 객체
  final NoteOrder noteOrder;
  final Function(NoteOrder noteOrder) onOrderChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //Radio는 그룹내에서 하나만 사용할 때
            Radio<NoteOrder>(
              //value는 프로퍼티에 표시할 값 지정, 초기값
              value: NoteOrder.title(noteOrder.orderType),
              groupValue: noteOrder,
              onChanged: (NoteOrder? value) {
                onOrderChanged(NoteOrder.title(noteOrder.orderType));
              },
              activeColor: Colors.white,
            ),
            Text('제목'),
            Radio<NoteOrder>(
              //value는 프로퍼티에 표시할 값 지정, 초기값
              value: NoteOrder.date(noteOrder.orderType),
              groupValue: noteOrder,
              onChanged: (NoteOrder? value) {
                onOrderChanged(NoteOrder.date(noteOrder.orderType));
              },
              activeColor: Colors.white,
            ),
            Text('날짜'),
            Radio<NoteOrder>(
              //value는 프로퍼티에 표시할 값 지정, 초기값
              value: NoteOrder.color(noteOrder.orderType),
              groupValue: noteOrder,
              onChanged: (NoteOrder? value) {
                onOrderChanged(NoteOrder.color(noteOrder.orderType));
              },
              activeColor: Colors.white,
            ),
            Text('색상'),
          ],
        ),
        Row(
          children: [
            //Radio는 그룹내에서 하나만 사용할 때
            Radio<OrderType>(
              //value는 프로퍼티에 표시할 값 지정, 초기값
              value: OrderType.ascending(),
              groupValue: noteOrder.orderType,
              onChanged: (OrderType? value) {
                onOrderChanged(
                    noteOrder.copyWith(orderType: OrderType.ascending()));
              },
              activeColor: Colors.white,
            ),
            Text('오름차순'),
            Radio<OrderType>(
              //value는 프로퍼티에 표시할 값 지정, 초기값
              value: OrderType.descending(),
              groupValue: noteOrder.orderType,
              onChanged: (OrderType? value) {
                onOrderChanged(
                    noteOrder.copyWith(orderType: OrderType.descending()));
              },
              activeColor: Colors.white,
            ),
            Text('내림차순'),
          ],
        ),
      ],
    );
  }
}
