$(document).ready(function() {
    $('.rank-gasoline #data-table').DataTable( {
        "bSort": false,
        "language": {
          url: "//cdn.datatables.net/plug-ins/1.10.11/i18n/Portuguese-Brasil.json"
        }
    });
    $('.rank-ethanol #data-table').DataTable( {
        "bSort": false,
        "language": {
          url: "//cdn.datatables.net/plug-ins/1.10.11/i18n/Portuguese-Brasil.json"
        }
    });
    $('.rank-diesel #data-table').DataTable( {
        "bSort": false,
        "language": {
          url: "//cdn.datatables.net/plug-ins/1.10.11/i18n/Portuguese-Brasil.json"
        }
    });
});
