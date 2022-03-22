{
  description = ''High Level OAI-PMH library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oaitools-v0_2_1.flake = false;
  inputs.src-oaitools-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-oaitools-v0_2_1.owner = "markpbaggett";
  inputs.src-oaitools-v0_2_1.repo  = "oaitools.nim";
  inputs.src-oaitools-v0_2_1.type  = "github";
  
  inputs."xmltools".owner = "nim-nix-pkgs";
  inputs."xmltools".ref   = "master";
  inputs."xmltools".repo  = "xmltools";
  inputs."xmltools".dir   = "v0_1_5";
  inputs."xmltools".type  = "github";
  inputs."xmltools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oaitools-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oaitools-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}