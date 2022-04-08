void main() {
  var capitalise = 'HellO_worLD';
  print(capitalise);
  print(capitalise.camelizeCapitalise());
  var strList = <String>['jinosh_prabhuraj', 'raj_rajesh', 'dHiNa_SmarT'];
  print(strList);
  print(strList.camelize('_'));
}

extension StringCapitalise on String {
  String camelizeCapitalise() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}

extension CamelCapitalise on List<String> {
  /// List is used for the list to be separated
  /// Pattern is used for separating the Strings
  /// A could be black space, underscore, etc
  List<String> camelize(String pattern) {
    var returnValue = <String>[];
    var list = this;
    for (var l = 0; l < list.length; l++) {
      var temp = list[l].split(pattern), temp2 = [];
      for (var i = 0; i < temp.length; i++) {
        var captalised = temp[i].camelizeCapitalise();
        if (temp.length - 1 == i) {
          temp2.add(captalised);
        } else {
          temp2.add(captalised + ' ');
        }
      }
      returnValue.add(temp2.join());
    }
    return returnValue;
  }
}
