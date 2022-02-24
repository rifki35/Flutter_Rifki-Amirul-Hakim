// void main(){
//   var student = {};
//   student['name'] = 'Alex under';
//   student['age'] = 16;
//   print(student);

//   print(student['name']);
//   print(student['age']);
// }

void main() {
  var student = {
    'name' : 'alex under',
    'age' : 16,
  };
  print(student);

  for(var key in student.keys) {
    print(student[key]);
  }
}