{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_bcrypt-2_0_3.flake = false;
  inputs.src-easy_bcrypt-2_0_3.ref   = "refs/tags/2.0.3";
  inputs.src-easy_bcrypt-2_0_3.owner = "Akito13";
  inputs.src-easy_bcrypt-2_0_3.repo  = "easy-bcrypt";
  inputs.src-easy_bcrypt-2_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_bcrypt-2_0_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-easy_bcrypt-2_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}