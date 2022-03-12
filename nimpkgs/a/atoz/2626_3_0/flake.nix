{
  description = ''Amazon Web Services (AWS) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-atoz-2626_3_0.flake = false;
  inputs.src-atoz-2626_3_0.owner = "disruptek";
  inputs.src-atoz-2626_3_0.ref   = "refs/tags/2626.3.0";
  inputs.src-atoz-2626_3_0.repo  = "atoz";
  inputs.src-atoz-2626_3_0.type  = "github";
  
  inputs."sigv4".dir   = "nimpkgs/s/sigv4";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".ref   = "flake-pinning";
  inputs."sigv4".repo  = "flake-nimble";
  inputs."sigv4".type  = "github";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/rest".dir   = "nimpkgs/h/https://github.com/disruptek/rest";
  inputs."https://github.com/disruptek/rest".owner = "riinr";
  inputs."https://github.com/disruptek/rest".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/rest".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/rest".type  = "github";
  inputs."https://github.com/disruptek/rest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/rest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/openapi".dir   = "nimpkgs/h/https://github.com/disruptek/openapi";
  inputs."https://github.com/disruptek/openapi".owner = "riinr";
  inputs."https://github.com/disruptek/openapi".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/openapi".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/openapi".type  = "github";
  inputs."https://github.com/disruptek/openapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".dir   = "nimpkgs/n/npeg";
  inputs."npeg".owner = "riinr";
  inputs."npeg".ref   = "flake-pinning";
  inputs."npeg".repo  = "flake-nimble";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-atoz-2626_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-atoz-2626_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}