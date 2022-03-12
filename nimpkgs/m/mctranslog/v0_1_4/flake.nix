{
  description = ''mctranslog - Transaction Log Package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mctranslog-v0_1_4.flake = false;
  inputs.src-mctranslog-v0_1_4.owner = "abbeymart";
  inputs.src-mctranslog-v0_1_4.ref   = "refs/tags/v0.1.4";
  inputs.src-mctranslog-v0_1_4.repo  = "mctranslog";
  inputs.src-mctranslog-v0_1_4.type  = "github";
  
  inputs."mcresponse".dir   = "nimpkgs/m/mcresponse";
  inputs."mcresponse".owner = "riinr";
  inputs."mcresponse".ref   = "flake-pinning";
  inputs."mcresponse".repo  = "flake-nimble";
  inputs."mcresponse".type  = "github";
  inputs."mcresponse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcresponse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcdb".dir   = "nimpkgs/m/mcdb";
  inputs."mcdb".owner = "riinr";
  inputs."mcdb".ref   = "flake-pinning";
  inputs."mcdb".repo  = "flake-nimble";
  inputs."mcdb".type  = "github";
  inputs."mcdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mctranslog-v0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mctranslog-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}