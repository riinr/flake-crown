{
  description = ''a couchDB client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mycouch-0_4_0.flake = false;
  inputs.src-mycouch-0_4_0.owner = "hamidb80";
  inputs.src-mycouch-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-mycouch-0_4_0.repo  = "mycouch";
  inputs.src-mycouch-0_4_0.type  = "github";
  
  inputs."macroutils".dir   = "nimpkgs/m/macroutils";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".ref   = "flake-pinning";
  inputs."macroutils".repo  = "flake-nimble";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus".dir   = "nimpkgs/m/macroplus";
  inputs."macroplus".owner = "riinr";
  inputs."macroplus".ref   = "flake-pinning";
  inputs."macroplus".repo  = "flake-nimble";
  inputs."macroplus".type  = "github";
  inputs."macroplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/hamidb80/coverage".dir   = "nimpkgs/h/https://github.com/hamidb80/coverage";
  inputs."https://github.com/hamidb80/coverage".owner = "riinr";
  inputs."https://github.com/hamidb80/coverage".ref   = "flake-pinning";
  inputs."https://github.com/hamidb80/coverage".repo  = "flake-nimble";
  inputs."https://github.com/hamidb80/coverage".type  = "github";
  inputs."https://github.com/hamidb80/coverage".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/hamidb80/coverage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mycouch-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mycouch-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}