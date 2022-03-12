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
  
  inputs."arraymancer".dir   = "nimpkgs/a/arraymancer";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".ref   = "flake-pinning";
  inputs."arraymancer".repo  = "flake-nimble";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/hugogranstrom/cdt".dir   = "nimpkgs/h/https://github.com/hugogranstrom/cdt";
  inputs."https://github.com/hugogranstrom/cdt".owner = "riinr";
  inputs."https://github.com/hugogranstrom/cdt".ref   = "flake-pinning";
  inputs."https://github.com/hugogranstrom/cdt".repo  = "flake-nimble";
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