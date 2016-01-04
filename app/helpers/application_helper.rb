module ApplicationHelper
 def get_login_type(resource)
   return resource.class.name == "User" ? "Entrar como Cliente" : "Entrar como Empresa"
 end

 def get_registration_type(resource)
   return resource.class.name == "User" ? "Registro para clientes" : "Registro para Empresas"
 end
end
