{
  description = ''faker is a Nim package that generates fake data for you.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-faker-v0_10_0.flake = false;
  inputs.src-faker-v0_10_0.ref   = "refs/tags/v0.10.0";
  inputs.src-faker-v0_10_0.owner = "jiro4989";
  inputs.src-faker-v0_10_0.repo  = "faker";
  inputs.src-faker-v0_10_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-faker-v0_10_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-faker-v0_10_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}