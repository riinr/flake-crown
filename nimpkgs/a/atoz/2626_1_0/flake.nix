{
  description = ''Amazon Web Services (AWS) APIs'';
  inputs.src-atoz-2626_1_0.flake = false;
  inputs.src-atoz-2626_1_0.type = "github";
  inputs.src-atoz-2626_1_0.owner = "disruptek";
  inputs.src-atoz-2626_1_0.repo = "atoz";
  inputs.src-atoz-2626_1_0.ref = "refs/tags/2626.1.0";
  
  
  inputs."sigv4".url = "path:../../../s/sigv4";
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";

  
  inputs."https://github.com/disruptek/rest".url = "path:../../../h/https://github.com/disruptek/rest";
  inputs."https://github.com/disruptek/rest".type = "github";
  inputs."https://github.com/disruptek/rest".owner = "riinr";
  inputs."https://github.com/disruptek/rest".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest".dir = "nimpkgs/h/https://github.com/disruptek/rest";

  
  inputs."https://github.com/disruptek/openapi".url = "path:../../../h/https://github.com/disruptek/openapi";
  inputs."https://github.com/disruptek/openapi".type = "github";
  inputs."https://github.com/disruptek/openapi".owner = "riinr";
  inputs."https://github.com/disruptek/openapi".repo = "flake-nimble";
  inputs."https://github.com/disruptek/openapi".ref = "flake-pinning";
  inputs."https://github.com/disruptek/openapi".dir = "nimpkgs/h/https://github.com/disruptek/openapi";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-atoz-2626_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-atoz-2626_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-atoz-2626_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}