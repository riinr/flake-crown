{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_bcrypt-2_0_0.flake = false;
  inputs.src-easy_bcrypt-2_0_0.owner = "Akito13";
  inputs.src-easy_bcrypt-2_0_0.ref   = "refs/tags/2.0.0";
  inputs.src-easy_bcrypt-2_0_0.repo  = "easy-bcrypt";
  inputs.src-easy_bcrypt-2_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_bcrypt-2_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-easy_bcrypt-2_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}