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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mctranslog-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mctranslog-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}