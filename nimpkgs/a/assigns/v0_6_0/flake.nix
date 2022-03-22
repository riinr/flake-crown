{
  description = ''syntax sugar for assignments'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-assigns-v0_6_0.flake = false;
  inputs.src-assigns-v0_6_0.owner = "metagn";
  inputs.src-assigns-v0_6_0.ref   = "v0_6_0";
  inputs.src-assigns-v0_6_0.repo  = "assigns";
  inputs.src-assigns-v0_6_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-assigns-v0_6_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-assigns-v0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}