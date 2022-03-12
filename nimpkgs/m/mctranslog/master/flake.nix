{
  description = ''mctranslog - Transaction Log Package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mctranslog-master.flake = false;
  inputs.src-mctranslog-master.owner = "abbeymart";
  inputs.src-mctranslog-master.ref   = "refs/heads/master";
  inputs.src-mctranslog-master.repo  = "mctranslog";
  inputs.src-mctranslog-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mctranslog-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mctranslog-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}