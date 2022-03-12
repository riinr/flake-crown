{
  description = ''High-level and low-level interfaces to python and lua'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NimBorg-master.flake = false;
  inputs.src-NimBorg-master.owner = "micklat";
  inputs.src-NimBorg-master.ref   = "refs/heads/master";
  inputs.src-NimBorg-master.repo  = "NimBorg";
  inputs.src-NimBorg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimBorg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NimBorg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}