{
  description = ''Define enums which values preserve their binary representation upon inserting or reordering'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-persistent_enums-master.flake = false;
  inputs.src-persistent_enums-master.owner = "yglukhov";
  inputs.src-persistent_enums-master.ref   = "refs/heads/master";
  inputs.src-persistent_enums-master.repo  = "persistent_enums";
  inputs.src-persistent_enums-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-persistent_enums-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-persistent_enums-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}