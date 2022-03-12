{
  description = ''PLZ Python PIP alternative'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-plz-0_0_1.flake = false;
  inputs.src-plz-0_0_1.owner = "juancarlospaco";
  inputs.src-plz-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-plz-0_0_1.repo  = "nim-pypi";
  inputs.src-plz-0_0_1.type  = "github";
  
  inputs."requirementstxt".dir   = "nimpkgs/r/requirementstxt";
  inputs."requirementstxt".owner = "riinr";
  inputs."requirementstxt".ref   = "flake-pinning";
  inputs."requirementstxt".repo  = "flake-nimble";
  inputs."requirementstxt".type  = "github";
  inputs."requirementstxt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."requirementstxt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libarchibi".dir   = "nimpkgs/l/libarchibi";
  inputs."libarchibi".owner = "riinr";
  inputs."libarchibi".ref   = "flake-pinning";
  inputs."libarchibi".repo  = "flake-nimble";
  inputs."libarchibi".type  = "github";
  inputs."libarchibi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libarchibi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-plz-0_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-plz-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}