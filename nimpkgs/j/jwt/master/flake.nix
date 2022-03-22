{
  description = ''JSON Web Tokens for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jwt-master.flake = false;
  inputs.src-jwt-master.ref   = "refs/heads/master";
  inputs.src-jwt-master.owner = "yglukhov";
  inputs.src-jwt-master.repo  = "nim-jwt";
  inputs.src-jwt-master.type  = "github";
  
  inputs."bearssl".owner = "nim-nix-pkgs";
  inputs."bearssl".ref   = "master";
  inputs."bearssl".repo  = "bearssl";
  inputs."bearssl".dir   = "";
  inputs."bearssl".type  = "github";
  inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jwt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jwt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}