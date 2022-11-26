{
  description = ''LDAP client bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimldap-main".dir   = "main";
  inputs."nimldap-main".owner = "nim-nix-pkgs";
  inputs."nimldap-main".ref   = "master";
  inputs."nimldap-main".repo  = "nimldap";
  inputs."nimldap-main".type  = "github";
  inputs."nimldap-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimldap-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}