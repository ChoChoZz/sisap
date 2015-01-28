package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta http-equiv= \"Content-Type\" content=\"text/html;charset=ISO-8859-1\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/monitor.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- formulario -->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/forms/demo.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/forms/component.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!--Select-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/select/demo.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/select/cs-select.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/select/cs-skin-rotate.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!--Menu-->\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/menuApp/style7.css\" />\r\n");
      out.write("        <script src=\"../js/menuApp/modernizr.custom.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script src=\"../js/formFull/modernizr.custom.js\"></script>\r\n");
      out.write("        <script src=\"../js/jquery.js\"></script>\r\n");
      out.write("        <script src=\"../js/bootstrap.min.js\"></script>\r\n");
      out.write("        <!--[if IE]>\r\n");
      out.write("                <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\r\n");
      out.write("        <![endif]-->\r\n");
      out.write("        <title>SISAP</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"page-header\">\r\n");
      out.write("                <h1 class=\"color1\">SISAP\r\n");
      out.write("                    <!--<small>Sistema para la atenci&oacute;n a la denuncia</small>-->\r\n");
      out.write("                </h1>\r\n");
      out.write("                <!--<p><button id=\"trigger-overlay\" class=\"btn-menu\" type=\"button\">Men&uacute;</button></p>-->\r\n");
      out.write("            </div>\r\n");
      out.write("            <form action=\"../ServletSave\" method=\"post\">\r\n");
      out.write("                <section class=\"content\">\r\n");
      out.write("                    <h2>Registro de usuarios</h2>\r\n");
      out.write("\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"text\" id=\"nombre\" name=\"nombre\" required placeholder=\"Nombre(s):\"/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-1\" for=\"input-4\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"text\" id=\"paterno\" name=\"paterno\" required placeholder=\"Primer Apellido:\" />\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-1\" for=\"input-4\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"text\" id=\"materno\" name=\"materno\" placeholder=\"Segundo Apellido:\"/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-1\" for=\"input-4\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <section>\r\n");
      out.write("                        <label class=\"select-label\">Tipo:</label>\r\n");
      out.write("                        <select class=\"cs-select cs-skin-rotate\" name=\"tipo\" id=\"tipo\">\r\n");
      out.write("                            <option value=\"Alumno\">Alumno</option>\r\n");
      out.write("                            <option value=\"Docente\">Docente</option>\r\n");
      out.write("                            <option value=\"Personal\">Personal IPN</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    <section>\r\n");
      out.write("                        <label class=\"select-label\">Plantel:</label>\r\n");
      out.write("                        <select class=\"cs-select cs-skin-rotate\" name=\"plantel\" id=\"plantel\">\r\n");
      out.write("                            <option value=\"1\">Plantel 1</option>\r\n");
      out.write("                            <option value=\"2\">Plantel 2</option>\r\n");
      out.write("                            <option value=\"3\">Plantel 3</option>\r\n");
      out.write("                            <option value=\"4\">Plantel 4</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\"  type=\"text\" id=\"id\" name=\"id\" required/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-2\" for=\"input-5\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\">Identificador:</span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"email\" id=\"email\" name=\"email\" required/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-3\" for=\"input-6\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\">Correo:</span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"password\" id=\"pass\" name=\"pass\"required placeholder=\"Contrase&ntilde;a:\"/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-1\" for=\"input-6\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"password\" id=\"pass1\" name=\"pass1\" required placeholder=\"Contrase&ntilde;a:\"/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-1\" for=\"input-6\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <section>\r\n");
      out.write("                        <label class=\"select-label\">Sexo:</label>\r\n");
      out.write("                        <select class=\"cs-select cs-skin-rotate\" name=\"sexo\" id=\"sexo\">\r\n");
      out.write("                            <option value=\"Femenino\">Femenino</option>\r\n");
      out.write("                            <option value=\"Masculino\">Masculino</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"number\" id=\"edad\" name=\"edad\" required placeholder=\"Edad:\"/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-2\" for=\"input-6\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"number\" id=\"telefono\" name=\"telefono\" required placeholder=\"Telefono fijo:\"/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-2\" for=\"input-6\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("\r\n");
      out.write("                    <span class=\"input input--hoshi\">\r\n");
      out.write("                        <input class=\"input__field input__field--hoshi\" type=\"number\" id=\"movil\" name=\"movil\" required placeholder=\"Telefono m&oacute;vil:\"/>\r\n");
      out.write("                        <label class=\"input__label input__label--hoshi input__label--hoshi-color-2\" for=\"input-6\">\r\n");
      out.write("                            <span class=\"input__label-content input__label-content--hoshi\"></span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <section>\r\n");
      out.write("                        <label class=\"select-label\">Tipo de sangre:</label>\r\n");
      out.write("                        <select name=\"tipoSangre\" id=\"tipoSangre\" class=\"cs-select cs-skin-rotate\">\r\n");
      out.write("                            <option value=\"O-\">O-</option>\r\n");
      out.write("                            <option value=\"O+\">O+</option>\r\n");
      out.write("                            <option value=\"A-\">A-</option>\r\n");
      out.write("                            <option value=\"A+\">A+</option>\r\n");
      out.write("                            <option value=\"B-\">B-</option>\r\n");
      out.write("                            <option value=\"B+\">B+</option>\r\n");
      out.write("                            <option value=\"AB-\">AB-</option>\r\n");
      out.write("                            <option value=\"AB+\">AB+</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    <input class=\"continue\" type=\"submit\" id=\"input-6\" required value=\"Enviar\" />\r\n");
      out.write("\r\n");
      out.write("                    <p>Sistema para la prevenci&oacute;n y atenci&oacute;n del delito dentro del Instituto Polit&eacute;cnico Nacional </p>\r\n");
      out.write("                </section>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"overlay overlay-contentpush\">\r\n");
      out.write("            <button type=\"button\" class=\"overlay-close\">Cerrar</button>\r\n");
      out.write("            <nav>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"./home.jsp\">Inicio</a></li>\r\n");
      out.write("                    <li><a href=\"./denuncia.jsp\">Denuncia</a></li>\r\n");
      out.write("                    <li><a href=\"./historial.jsp\">Historial</a></li>\r\n");
      out.write("                    <li><a href=\"./prevencion.jsp\">Prevenci&oacute;n</a></li>\r\n");
      out.write("                    <li><a href=\"./perfil.jsp\">Perfil</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Cerrar Sesi&oacute;n</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </nav>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"../js/menuApp/classie.js\"></script>\r\n");
      out.write("        <script src=\"../js/menuApp/demo7.js\"></script>\r\n");
      out.write("        <script src=\"../js/menuApp/classie.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("            (function() {\r\n");
      out.write("                // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim\r\n");
      out.write("                if (!String.prototype.trim) {\r\n");
      out.write("                    (function() {\r\n");
      out.write("                        // Make sure we trim BOM and NBSP\r\n");
      out.write("                        var rtrim = /^[\\s\\uFEFF\\xA0]+|[\\s\\uFEFF\\xA0]+$/g;\r\n");
      out.write("                        String.prototype.trim = function() {\r\n");
      out.write("                            return this.replace(rtrim, '');\r\n");
      out.write("                        };\r\n");
      out.write("                    })();\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("                [].slice.call(document.querySelectorAll('input.input__field')).forEach(function(inputEl) {\r\n");
      out.write("                    // in case the input is already filled..\r\n");
      out.write("                    if (inputEl.value.trim() !== '') {\r\n");
      out.write("                        classie.add(inputEl.parentNode, 'input--filled');\r\n");
      out.write("                    }\r\n");
      out.write("\r\n");
      out.write("                    // events:\r\n");
      out.write("                    inputEl.addEventListener('focus', onInputFocus);\r\n");
      out.write("                    inputEl.addEventListener('blur', onInputBlur);\r\n");
      out.write("                });\r\n");
      out.write("\r\n");
      out.write("                function onInputFocus(ev) {\r\n");
      out.write("                    classie.add(ev.target.parentNode, 'input--filled');\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("                function onInputBlur(ev) {\r\n");
      out.write("                    if (ev.target.value.trim() === '') {\r\n");
      out.write("                        classie.remove(ev.target.parentNode, 'input--filled');\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            })();\r\n");
      out.write("        </script>\r\n");
      out.write("        <script src=\"../js/select/classie.js\"></script>\r\n");
      out.write("        <script src=\"../js/select/selectFx.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("            (function() {\r\n");
      out.write("                [].slice.call(document.querySelectorAll('select.cs-select')).forEach(function(el) {\r\n");
      out.write("                    new SelectFx(el);\r\n");
      out.write("                });\r\n");
      out.write("            })();\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
