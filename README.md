# MelonBouncing
Bouncing views and widgets

## MelonBouncingButton
#### Normal case
 ```dart
MelonBouncingButton(
  callback: () {},
  borderRadius: 100,
  child: Container(),
).hover(x: -2);
 ```

#### Dialog case
 ```dart
MelonBouncingButton(
  callback: () {},
  borderRadius: 100,
  child: Container(
    decoration: BoxDecoration(
    color: positiveColor ?? Color(0xFFA83533),
    borderRadius: BorderRadius.circular(100)
  ),
  padding: const EdgeInsets.only( left: 0, right: 0, bottom: 12, top: 12 ),
  alignment: Alignment.center,
  child: Text(
    "ยืนยัน",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      fontFamily: 'Bai',
      color: positiveTextColor ?? Colors.black),
    ),
  ),
).hover(y: -1, x: -0.5);
 ```


## MelonBouncingButton.text
 ```dart
MelonBouncingButton.text(
  enabledHover: true,
  text: "ลงชื่อเข้าใช้",
  fontFamily: "Itim",
  textColor: Colors.white,
  fontSize: 16,
  height: 34.0,
  fontWeight: FontWeight.normal,
  borderRadius: 20,
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  color: Colors.black.withOpacity(0.8),
  callback: () {}
).hover(y: -1, x: -2.0, z: 1.04);
 ```
