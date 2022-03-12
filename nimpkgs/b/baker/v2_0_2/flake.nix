{
  description = ''Static website generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-baker-v2_0_2.flake = false;
  inputs.src-baker-v2_0_2.owner = "jasonrbriggs";
  inputs.src-baker-v2_0_2.ref   = "refs/tags/v2.0.2";
  inputs.src-baker-v2_0_2.repo  = "baker";
  inputs.src-baker-v2_0_2.type  = "github";
  
  inputs."proton".dir   = "nimpkgs/p/proton";
  inputs."proton".owner = "riinr";
  inputs."proton".ref   = "flake-pinning";
  inputs."proton".repo  = "flake-nimble";
  inputs."proton".type  = "github";
  inputs."proton".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/docopt/docopt.nim".dir   = "nimpkgs/h/https://github.com/docopt/docopt.nim";
  inputs."https://github.com/docopt/docopt.nim".owner = "riinr";
  inputs."https://github.com/docopt/docopt.nim".ref   = "flake-pinning";
  inputs."https://github.com/docopt/docopt.nim".repo  = "flake-nimble";
  inputs."https://github.com/docopt/docopt.nim".type  = "github";
  inputs."https://github.com/docopt/docopt.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/docopt/docopt.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown".dir   = "nimpkgs/m/markdown";
  inputs."markdown".owner = "riinr";
  inputs."markdown".ref   = "flake-pinning";
  inputs."markdown".repo  = "flake-nimble";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones".dir   = "nimpkgs/t/timezones";
  inputs."timezones".owner = "riinr";
  inputs."timezones".ref   = "flake-pinning";
  inputs."timezones".repo  = "flake-nimble";
  inputs."timezones".type  = "github";
  inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb".dir   = "nimpkgs/n/ndb";
  inputs."ndb".owner = "riinr";
  inputs."ndb".ref   = "flake-pinning";
  inputs."ndb".repo  = "flake-nimble";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-baker-v2_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-baker-v2_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}