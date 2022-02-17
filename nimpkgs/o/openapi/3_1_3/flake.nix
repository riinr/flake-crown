{
  description = ''OpenAPI Code Generator'';
  inputs.src-openapi-3_1_3.flake = false;
  inputs.src-openapi-3_1_3.type = "github";
  inputs.src-openapi-3_1_3.owner = "disruptek";
  inputs.src-openapi-3_1_3.repo = "openapi";
  inputs.src-openapi-3_1_3.ref = "refs/tags/3.1.3";
  
  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  outputs = { self, nixpkgs, src-openapi-3_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openapi-3_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openapi-3_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}