{
  description = ''React.js 16.x bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-react16-0_3_6.flake = false;
  inputs.src-react16-0_3_6.owner = "kristianmandrup";
  inputs.src-react16-0_3_6.ref   = "refs/tags/0.3.6";
  inputs.src-react16-0_3_6.repo  = "react-16.nim";
  inputs.src-react16-0_3_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-react16-0_3_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-react16-0_3_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}