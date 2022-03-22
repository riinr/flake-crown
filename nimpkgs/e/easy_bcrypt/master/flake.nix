{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_bcrypt-master.flake = false;
  inputs.src-easy_bcrypt-master.ref   = "refs/heads/master";
  inputs.src-easy_bcrypt-master.owner = "Akito13";
  inputs.src-easy_bcrypt-master.repo  = "easy-bcrypt";
  inputs.src-easy_bcrypt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_bcrypt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-easy_bcrypt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}