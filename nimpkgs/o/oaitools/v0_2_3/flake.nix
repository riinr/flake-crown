{
  description = ''A high-level OAI-PMH library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oaitools-v0_2_3.flake = false;
  inputs.src-oaitools-v0_2_3.owner = "markpbaggett";
  inputs.src-oaitools-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-oaitools-v0_2_3.repo  = "oaitools.nim";
  inputs.src-oaitools-v0_2_3.type  = "github";
  
  inputs."xmltools".dir   = "nimpkgs/x/xmltools";
  inputs."xmltools".owner = "riinr";
  inputs."xmltools".ref   = "flake-pinning";
  inputs."xmltools".repo  = "flake-nimble";
  inputs."xmltools".type  = "github";
  inputs."xmltools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oaitools-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oaitools-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}