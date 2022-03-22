{
  description = ''Interface for reading per bits'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bitstreams-main.flake = false;
  inputs.src-bitstreams-main.owner = "sealmove";
  inputs.src-bitstreams-main.ref   = "main";
  inputs.src-bitstreams-main.repo  = "bitstreams";
  inputs.src-bitstreams-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bitstreams-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bitstreams-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}