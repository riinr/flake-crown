{
  description = ''PLZ Python PIP alternative'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-plz-master.flake = false;
  inputs.src-plz-master.owner = "juancarlospaco";
  inputs.src-plz-master.ref   = "refs/heads/master";
  inputs.src-plz-master.repo  = "nim-pypi";
  inputs.src-plz-master.type  = "github";
  
  inputs."requirementstxt".dir   = "nimpkgs/r/requirementstxt";
  inputs."requirementstxt".owner = "riinr";
  inputs."requirementstxt".ref   = "flake-pinning";
  inputs."requirementstxt".repo  = "flake-nimble";
  inputs."requirementstxt".type  = "github";
  inputs."requirementstxt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."requirementstxt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-plz-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-plz-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}