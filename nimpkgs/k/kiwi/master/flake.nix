{
  description = ''Cassowary constraint solving'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kiwi-master.flake = false;
  inputs.src-kiwi-master.owner = "yglukhov";
  inputs.src-kiwi-master.ref   = "master";
  inputs.src-kiwi-master.repo  = "kiwi";
  inputs.src-kiwi-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kiwi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kiwi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}