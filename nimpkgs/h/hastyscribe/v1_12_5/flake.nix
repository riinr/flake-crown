{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hastyscribe-v1_12_5.flake = false;
  inputs.src-hastyscribe-v1_12_5.owner = "h3rald";
  inputs.src-hastyscribe-v1_12_5.ref   = "v1_12_5";
  inputs.src-hastyscribe-v1_12_5.repo  = "hastyscribe";
  inputs.src-hastyscribe-v1_12_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_12_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hastyscribe-v1_12_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}