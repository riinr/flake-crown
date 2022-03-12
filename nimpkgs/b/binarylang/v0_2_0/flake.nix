{
  description = ''Binary parser/encoder DSL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-binarylang-v0_2_0.flake = false;
  inputs.src-binarylang-v0_2_0.owner = "sealmove";
  inputs.src-binarylang-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-binarylang-v0_2_0.repo  = "binarylang";
  inputs.src-binarylang-v0_2_0.type  = "github";
  
  inputs."bitstreams".dir   = "nimpkgs/b/bitstreams";
  inputs."bitstreams".owner = "riinr";
  inputs."bitstreams".ref   = "flake-pinning";
  inputs."bitstreams".repo  = "flake-nimble";
  inputs."bitstreams".type  = "github";
  inputs."bitstreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitstreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-binarylang-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-binarylang-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}