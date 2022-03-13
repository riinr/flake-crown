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
  
  inputs."mcresponse".owner = "nim-nix-pkgs";
  inputs."mcresponse".ref   = "master";
  inputs."mcresponse".repo  = "mcresponse";
  inputs."mcresponse".type  = "github";
  inputs."mcresponse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcresponse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcdb".owner = "nim-nix-pkgs";
  inputs."mcdb".ref   = "master";
  inputs."mcdb".repo  = "mcdb";
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