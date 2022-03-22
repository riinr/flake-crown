{
  description = ''declarative UI framework for building Canvas'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Blackvas-0_1_0.flake = false;
  inputs.src-Blackvas-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-Blackvas-0_1_0.owner = "momeemt";
  inputs.src-Blackvas-0_1_0.repo  = "Blackvas";
  inputs.src-Blackvas-0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Blackvas-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Blackvas-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}