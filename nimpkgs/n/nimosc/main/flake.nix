{
  description = ''A wrapper around liblo for the Open Sound Control (OSC) protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimosc-main.flake = false;
  inputs.src-nimosc-main.ref   = "refs/heads/main";
  inputs.src-nimosc-main.owner = "Psirus";
  inputs.src-nimosc-main.repo  = "NimOSC";
  inputs.src-nimosc-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimosc-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimosc-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}