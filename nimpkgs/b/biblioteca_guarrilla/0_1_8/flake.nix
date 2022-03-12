{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-biblioteca_guarrilla-0_1_8.flake = false;
  inputs.src-biblioteca_guarrilla-0_1_8.owner = "juancarlospaco";
  inputs.src-biblioteca_guarrilla-0_1_8.ref   = "refs/tags/0.1.8";
  inputs.src-biblioteca_guarrilla-0_1_8.repo  = "biblioteca-guarrilla";
  inputs.src-biblioteca_guarrilla-0_1_8.type  = "github";
  
  inputs."webp".dir   = "nimpkgs/w/webp";
  inputs."webp".owner = "riinr";
  inputs."webp".ref   = "flake-pinning";
  inputs."webp".repo  = "flake-nimble";
  inputs."webp".type  = "github";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-biblioteca_guarrilla-0_1_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-biblioteca_guarrilla-0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}