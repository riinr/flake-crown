{
  description = ''micro and elegant web framework'';
  inputs.src-scorper-v1_0_7.flake = false;
  inputs.src-scorper-v1_0_7.type = "github";
  inputs.src-scorper-v1_0_7.owner = "bung87";
  inputs.src-scorper-v1_0_7.repo = "scorper";
  inputs.src-scorper-v1_0_7.ref = "refs/tags/v1.0.7";
  
  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."https://github.com/nortero-code/rx-nim.git".type = "github";
  inputs."https://github.com/nortero-code/rx-nim.git".owner = "riinr";
  inputs."https://github.com/nortero-code/rx-nim.git".repo = "flake-nimble";
  inputs."https://github.com/nortero-code/rx-nim.git".ref = "flake-pinning";
  inputs."https://github.com/nortero-code/rx-nim.git".dir = "nimpkgs/h/https://github.com/nortero-code/rx-nim.git";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."result".type = "github";
  inputs."result".owner = "riinr";
  inputs."result".repo = "flake-nimble";
  inputs."result".ref = "flake-pinning";
  inputs."result".dir = "nimpkgs/r/result";

  outputs = { self, nixpkgs, src-scorper-v1_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scorper-v1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scorper-v1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}