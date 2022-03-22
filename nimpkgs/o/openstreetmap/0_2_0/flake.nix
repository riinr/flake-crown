{
  description = ''OpenStreetMap API Lib for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openstreetmap-0_2_0.flake = false;
  inputs.src-openstreetmap-0_2_0.owner = "juancarlospaco";
  inputs.src-openstreetmap-0_2_0.ref   = "0_2_0";
  inputs.src-openstreetmap-0_2_0.repo  = "nim-openstreetmap";
  inputs.src-openstreetmap-0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openstreetmap-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-openstreetmap-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}