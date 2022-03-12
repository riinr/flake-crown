{
  description = ''stew is collection of utilities, std library extensions and budding libraries that are frequently used at Status, but are too small to deserve their own git repository.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stew-master.flake = false;
  inputs.src-stew-master.owner = "status-im";
  inputs.src-stew-master.ref   = "refs/heads/master";
  inputs.src-stew-master.repo  = "nim-stew";
  inputs.src-stew-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stew-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stew-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}