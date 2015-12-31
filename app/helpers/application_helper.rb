module ApplicationHelper
 def get_login_type(resource)
   return resource.class.name == "User" ? "Entrar como Cliente" : "Entrar como Empresa"
 end
end
