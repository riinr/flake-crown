{
  description = ''Google Cloud Platform (GCP) APIs'';
  inputs.src-gcplat-2_0_5.flake = false;
  inputs.src-gcplat-2_0_5.type = "github";
  inputs.src-gcplat-2_0_5.owner = "disruptek";
  inputs.src-gcplat-2_0_5.repo = "gcplat";
  inputs.src-gcplat-2_0_5.ref = "refs/tags/2.0.5";
  
  
  inputs."https://github.com/yglukhov/nim-jwt.git".url = "path:../../../h/https://github.com/yglukhov/nim-jwt.git";
  inputs."https://github.com/yglukhov/nim-jwt.git".type = "github";
  inputs."https://github.com/yglukhov/nim-jwt.git".owner = "riinr";
  inputs."https://github.com/yglukhov/nim-jwt.git".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/nim-jwt.git".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/nim-jwt.git".dir = "nimpkgs/h/https://github.com/yglukhov/nim-jwt.git";

  
  inputs."https://github.com/disruptek/rest.git".url = "path:../../../h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  outputs = { self, nixpkgs, src-gcplat-2_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gcplat-2_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gcplat-2_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}