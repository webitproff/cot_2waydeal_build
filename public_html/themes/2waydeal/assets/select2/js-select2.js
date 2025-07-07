// запускаем "select2"
$(document).ready(function () {
  $('select[name="c"]').select2({
    placeholder: "---",
    width: '100%',
    templateResult: function(state) {
      if (!state.id) return state.text;
      let text = state.text;
      let depth = 0;
      if (text.includes('├───')) { depth = 2; text = text.replace('├───', '').trim(); }
      else if (text.includes('├─')) { depth = 1; text = text.replace('├─', '').trim(); }
      let $span = depth === 0 ? $('<span><strong>' + text + '</strong></span>') : $('<span>' + ' '.repeat(depth * 4) + text + '</span>');
      return $span;
    },
    templateSelection: function(state) {
      if (!state.id) return state.text;
      let text = state.text;
      if (text.includes('├───')) text = text.replace('├───', '').trim();
      else if (text.includes('├─')) text = text.replace('├─', '').trim();
      return text;
    }
  });
});

// запускаем "select2"
$(document).ready(function () {
  $('select[name="rcat"]').select2({
    placeholder: "---",
    width: '100%',
    templateResult: function(state) {
      if (!state.id) return state.text;
      let text = state.text;
      let depth = 0;
      if (text.includes('├───')) { depth = 2; text = text.replace('├───', '').trim(); }
      else if (text.includes('├─')) { depth = 1; text = text.replace('├─', '').trim(); }
      let $span = depth === 0 ? $('<span><strong>' + text + '</strong></span>') : $('<span>' + ' '.repeat(depth * 4) + text + '</span>');
      return $span;
    },
    templateSelection: function(state) {
      if (!state.id) return state.text;
      let text = state.text;
      if (text.includes('├───')) text = text.replace('├───', '').trim();
      else if (text.includes('├─')) text = text.replace('├─', '').trim();
      return text;
    }
  });
});