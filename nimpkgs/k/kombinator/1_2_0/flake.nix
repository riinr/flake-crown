{
  description = ''Kombinator is a tool to generate commands line from parameters combination from a config file.'';
  inputs.src-kombinator-1_2_0.flake = false;
  inputs.src-kombinator-1_2_0.type = "gitlab";
  inputs.src-kombinator-1_2_0.owner = "EchoPouet";
  inputs.src-kombinator-1_2_0.repo = "kombinator";
  inputs.src-kombinator-1_2_0.ref = "refs/tags/1.2.0";
  
  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."suru".type = "github";
  inputs."suru".owner = "riinr";
  inputs."suru".repo = "flake-nimble";
  inputs."suru".ref = "flake-pinning";
  inputs."suru".dir = "nimpkgs/s/suru";

  outputs = { self, nixpkgs, src-kombinator-1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kombinator-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kombinator-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}