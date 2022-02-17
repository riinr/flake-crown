{
  description = ''Radix tree wrapper for Nim'';
  inputs.src-nimrax-master.flake = false;
  inputs.src-nimrax-master.type = "github";
  inputs.src-nimrax-master.owner = "genotrance";
  inputs.src-nimrax-master.repo = "nimrax";
  inputs.src-nimrax-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimrax-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}