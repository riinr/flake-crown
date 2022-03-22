{
  description = ''Wraps the bcrypt (blowfish) library for creating encrypted hashes (useful for passwords)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bcrypt-master.flake = false;
  inputs.src-bcrypt-master.owner = "ithkuil";
  inputs.src-bcrypt-master.ref   = "master";
  inputs.src-bcrypt-master.repo  = "bcryptnim";
  inputs.src-bcrypt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bcrypt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bcrypt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}