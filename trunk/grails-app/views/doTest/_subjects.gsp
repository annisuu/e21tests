<select name="idSubject" class="input">
  <option value="">SSELECCIONE</option>
  <g:each var="subject" in ="${subject}">
  <option  value="${subject.id_subject}">
  ${subject.name_subject}
  </option>
  </g:each>
</select>