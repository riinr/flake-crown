{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bluu-0_0_6.flake = false;
  inputs.src-bluu-0_0_6.owner = "disruptek";
  inputs.src-bluu-0_0_6.ref   = "refs/tags/0.0.6";
  inputs.src-bluu-0_0_6.repo  = "bluu";
  inputs.src-bluu-0_0_6.type  = "github";
  
  inputs."https://github.com/disruptek/rest.git".dir   = "nimpkgs/h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".type  = "github";
  inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/openapi.git".dir   = "nimpkgs/h/https://github.com/disruptek/openapi.git";
  inputs."https://github.com/disruptek/openapi.git".owner = "riinr";
  inputs."https://github.com/disruptek/openapi.git".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/openapi.git".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/openapi.git".type  = "github";
  inputs."https://github.com/disruptek/openapi.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/openapi.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bluu-0_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bluu-0_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}