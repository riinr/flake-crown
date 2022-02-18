{
  description = ''A library of components and systems for use with the Polymorph ECS'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-polymers-v0_3_1.flake = false;
  inputs.src-polymers-v0_3_1.type = "github";
  inputs.src-polymers-v0_3_1.owner = "rlipsc";
  inputs.src-polymers-v0_3_1.repo = "polymers";
  inputs.src-polymers-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."https://github.com/rlipsc/polymorph".type = "github";
  inputs."https://github.com/rlipsc/polymorph".owner = "riinr";
  inputs."https://github.com/rlipsc/polymorph".repo = "flake-nimble";
  inputs."https://github.com/rlipsc/polymorph".ref = "flake-pinning";
  inputs."https://github.com/rlipsc/polymorph".dir = "nimpkgs/h/https://github.com/rlipsc/polymorph";

  outputs = { self, nixpkgs, flakeNimbleLib, src-polymers-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymers-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polymers-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}