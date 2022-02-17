{
  description = ''Amazon Web Services Signature Version 4'';
  inputs.src-sigv4-1_3_0.flake = false;
  inputs.src-sigv4-1_3_0.type = "github";
  inputs.src-sigv4-1_3_0.owner = "disruptek";
  inputs.src-sigv4-1_3_0.repo = "sigv4";
  inputs.src-sigv4-1_3_0.ref = "refs/tags/1.3.0";
  
  
  inputs."https://github.com/jangko/nimsha2".type = "github";
  inputs."https://github.com/jangko/nimsha2".owner = "riinr";
  inputs."https://github.com/jangko/nimsha2".repo = "flake-nimble";
  inputs."https://github.com/jangko/nimsha2".ref = "flake-pinning";
  inputs."https://github.com/jangko/nimsha2".dir = "nimpkgs/h/https://github.com/jangko/nimsha2";

  
  inputs."https://github.com/disruptek/balls".type = "github";
  inputs."https://github.com/disruptek/balls".owner = "riinr";
  inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";

  outputs = { self, nixpkgs, src-sigv4-1_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sigv4-1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}