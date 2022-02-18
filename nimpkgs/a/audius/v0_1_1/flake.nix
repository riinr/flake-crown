{
  description = ''Audius is a simple client library for interacting with the Audius free API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-audius-v0_1_1.flake = false;
  inputs.src-audius-v0_1_1.type = "github";
  inputs.src-audius-v0_1_1.owner = "ceebeel";
  inputs.src-audius-v0_1_1.repo = "audius";
  inputs.src-audius-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, flakeNimbleLib, src-audius-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-audius-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-audius-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}