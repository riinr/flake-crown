{
  description = ''Sample React 16.6 SPA with hooks using Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-react16-v0_3_7.flake = false;
  inputs.src-react16-v0_3_7.owner = "kristianmandrup";
  inputs.src-react16-v0_3_7.ref   = "v0_3_7";
  inputs.src-react16-v0_3_7.repo  = "react-16.nim";
  inputs.src-react16-v0_3_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-react16-v0_3_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-react16-v0_3_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}