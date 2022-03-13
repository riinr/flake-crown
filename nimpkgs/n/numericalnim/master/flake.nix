{
  description = ''A collection of numerical methods written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-numericalnim-master.flake = false;
  inputs.src-numericalnim-master.owner = "SciNim";
  inputs.src-numericalnim-master.ref   = "refs/heads/master";
  inputs.src-numericalnim-master.repo  = "numericalnim";
  inputs.src-numericalnim-master.type  = "github";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/hugogranstrom/cdt".owner = "nim-nix-pkgs";
  inputs."https://github.com/hugogranstrom/cdt".ref   = "master";
  inputs."https://github.com/hugogranstrom/cdt".repo  = "https://github.com/hugogranstrom/cdt";
  inputs."https://github.com/hugogranstrom/cdt".type  = "github";
  inputs."https://github.com/hugogranstrom/cdt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/hugogranstrom/cdt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-numericalnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-numericalnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}