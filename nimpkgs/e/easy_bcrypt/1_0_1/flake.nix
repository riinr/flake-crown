{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_bcrypt-1_0_1.flake = false;
  inputs.src-easy_bcrypt-1_0_1.ref   = "refs/tags/1.0.1";
  inputs.src-easy_bcrypt-1_0_1.owner = "Akito13";
  inputs.src-easy_bcrypt-1_0_1.repo  = "easy-bcrypt";
  inputs.src-easy_bcrypt-1_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_bcrypt-1_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-easy_bcrypt-1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}