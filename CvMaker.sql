USE [CvMakerDb]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CertificateName] [varchar](100) NOT NULL,
	[CertificateDate] [date] NOT NULL,
	[IsCertificate] [bit] NOT NULL,
	[CertificateDescription] [varchar](max) NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](200) NOT NULL,
	[CourseDate] [date] NOT NULL,
	[CourseDescription] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EducationName] [varchar](250) NOT NULL,
	[School] [varchar](200) NOT NULL,
	[EducationCity] [varchar](200) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[IsEduContinue] [bit] NOT NULL,
	[EducationDescription] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employment]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [varchar](250) NOT NULL,
	[Employer] [varchar](200) NOT NULL,
	[EmployerCity] [varchar](100) NOT NULL,
	[EmployerStartDate] [date] NOT NULL,
	[EmployerEndDate] [date] NULL,
	[IsEmploymentContinue] [bit] NOT NULL,
	[EmploymentDescription] [varchar](max) NOT NULL,
	[IsEmployment] [bit] NOT NULL,
 CONSTRAINT [PK_Employment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hobbies]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hobbies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hobby] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Hobbies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Internship]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Internship](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InternshipPosition] [varchar](200) NULL,
	[InternshipEmployer] [varchar](150) NULL,
	[InternCity] [varchar](50) NULL,
	[InternStartDate] [date] NULL,
	[InternEndDate] [date] NULL,
	[IsInternContinue] [bit] NULL,
	[IsIntern] [bit] NOT NULL,
	[InternDescription] [varchar](max) NULL,
 CONSTRAINT [PK_Internship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Language] [varchar](50) NOT NULL,
	[LanguageLevel] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalDetails]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[LastName] [varchar](150) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Headline] [varchar](max) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Address] [varchar](max) NULL,
	[City] [varchar](50) NULL,
	[DateOfBirth] [date] NOT NULL,
	[DriverLicence] [bit] NOT NULL,
 CONSTRAINT [PK_PersonalDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Qualities]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QualitiyName] [varchar](100) NOT NULL,
	[IsQuality] [bit] NOT NULL,
 CONSTRAINT [PK_Qualities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[References]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[References](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReferenceName] [varchar](200) NULL,
	[ReferenceOrganization] [varchar](200) NULL,
	[ReferenceCity] [varchar](100) NULL,
	[ReferencePhone] [varchar](50) NULL,
	[ReferenceEmail] [varchar](50) NULL,
	[IsReference] [bit] NOT NULL,
 CONSTRAINT [PK_References] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resume]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resume](
	[Id] [uniqueidentifier] NOT NULL,
	[PersonId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Address] [varchar](max) NULL,
	[ProfileAbout] [varchar](max) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[EmploymentId] [int] NOT NULL,
	[EducationId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[HobbiesId] [int] NULL,
	[InternshipId] [int] NULL,
	[CertificateId] [int] NULL,
	[ReferenceId] [int] NULL,
	[CoursesId] [int] NULL,
	[QualitiesId] [int] NULL,
	[SkillsId] [int] NULL,
 CONSTRAINT [PK_Resume] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](200) NOT NULL,
	[SkillLevel] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Certificate] ON 

INSERT [dbo].[Certificate] ([Id], [CertificateName], [CertificateDate], [IsCertificate], [CertificateDescription]) VALUES (1, N'.Net Programming', CAST(N'2023-08-10' AS Date), 1, N'I gain this certificate from İstanbul Eğitim Akademi')
INSERT [dbo].[Certificate] ([Id], [CertificateName], [CertificateDate], [IsCertificate], [CertificateDescription]) VALUES (2, N'Microsoft Azure Cloud Practitioner', CAST(N'2023-10-01' AS Date), 1, N'I take this certificate from Microsoft')
SET IDENTITY_INSERT [dbo].[Certificate] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [CourseName], [CourseDate], [CourseDescription]) VALUES (1, N'Full Stack Developer', CAST(N'2023-05-01' AS Date), N'I attented this course in İstanbul and This is fully well exprience for me')
INSERT [dbo].[Courses] ([Id], [CourseName], [CourseDate], [CourseDescription]) VALUES (2, N'.Net Developer', CAST(N'2023-10-01' AS Date), N'This is full online course with Coursera.')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([Id], [EducationName], [School], [EducationCity], [StartDate], [EndDate], [IsEduContinue], [EducationDescription]) VALUES (2, N'Yeşilyayla Technical High School', N'High School', N'Bursa', CAST(N'2006-10-10' AS Date), CAST(N'2010-06-01' AS Date), 0, N'High School Education Computer Programming')
INSERT [dbo].[Education] ([Id], [EducationName], [School], [EducationCity], [StartDate], [EndDate], [IsEduContinue], [EducationDescription]) VALUES (3, N'Navy Petty Officer School', N'Associate ', N'Kocaeli', CAST(N'2010-10-01' AS Date), CAST(N'2012-09-30' AS Date), 0, N'Navy School for 2 years')
SET IDENTITY_INSERT [dbo].[Education] OFF
GO
SET IDENTITY_INSERT [dbo].[Employment] ON 

INSERT [dbo].[Employment] ([Id], [Position], [Employer], [EmployerCity], [EmployerStartDate], [EmployerEndDate], [IsEmploymentContinue], [EmploymentDescription], [IsEmployment]) VALUES (1, N'Officer', N'Turkish Navy', N'Kocaeli', CAST(N'2012-09-30' AS Date), NULL, 1, N'I served Turkish Navy for 10 years', 1)
SET IDENTITY_INSERT [dbo].[Employment] OFF
GO
SET IDENTITY_INSERT [dbo].[Hobbies] ON 

INSERT [dbo].[Hobbies] ([Id], [Hobby]) VALUES (1, N'Tennis')
INSERT [dbo].[Hobbies] ([Id], [Hobby]) VALUES (2, N'Running')
INSERT [dbo].[Hobbies] ([Id], [Hobby]) VALUES (3, N'Traveling')
INSERT [dbo].[Hobbies] ([Id], [Hobby]) VALUES (4, N'Football')
INSERT [dbo].[Hobbies] ([Id], [Hobby]) VALUES (5, N'Basketball')
SET IDENTITY_INSERT [dbo].[Hobbies] OFF
GO
SET IDENTITY_INSERT [dbo].[Internship] ON 

INSERT [dbo].[Internship] ([Id], [InternshipPosition], [InternshipEmployer], [InternCity], [InternStartDate], [InternEndDate], [IsInternContinue], [IsIntern], [InternDescription]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Internship] OFF
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([Id], [Language], [LanguageLevel]) VALUES (1, N'Türkçe', N'5')
INSERT [dbo].[Languages] ([Id], [Language], [LanguageLevel]) VALUES (2, N'English', N'4')
INSERT [dbo].[Languages] ([Id], [Language], [LanguageLevel]) VALUES (3, N'Spanish', N'2')
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
INSERT [dbo].[PersonalDetails] ([Id], [Name], [LastName], [Email], [Headline], [PhoneNumber], [Address], [City], [DateOfBirth], [DriverLicence]) VALUES (N'9234cbe9-71ec-45ab-8288-44f1c06adb93', N'Kadir', N'GÜVEN', N'kadirgvn@gmail.com', N'Software Developer', N'538 272 54 03', NULL, N'Hamidiye Mah. No 77 Akdeniz / MERSİN', CAST(N'1992-03-03' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[Qualities] ON 

INSERT [dbo].[Qualities] ([Id], [QualitiyName], [IsQuality]) VALUES (1, N'Time Management', 1)
INSERT [dbo].[Qualities] ([Id], [QualitiyName], [IsQuality]) VALUES (2, N'C#', 1)
INSERT [dbo].[Qualities] ([Id], [QualitiyName], [IsQuality]) VALUES (3, N'Java', 1)
SET IDENTITY_INSERT [dbo].[Qualities] OFF
GO
SET IDENTITY_INSERT [dbo].[References] ON 

INSERT [dbo].[References] ([Id], [ReferenceName], [ReferenceOrganization], [ReferenceCity], [ReferencePhone], [ReferenceEmail], [IsReference]) VALUES (1, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[References] OFF
GO
INSERT [dbo].[Resume] ([Id], [PersonId], [Name], [LastName], [PhoneNumber], [Email], [Address], [ProfileAbout], [Title], [EmploymentId], [EducationId], [LanguageId], [HobbiesId], [InternshipId], [CertificateId], [ReferenceId], [CoursesId], [QualitiesId], [SkillsId]) VALUES (N'a4e7bcc0-0d2f-4815-9d97-d7876dc6a2f5', N'9234cbe9-71ec-45ab-8288-44f1c06adb93', N'Kadir', N'GÜVEN', N'538 272 54 03', N'kadirgvn@gmail.com', NULL, N'I am Kadir and I want to work as Junior Software Developer', N'Software Developer', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([Id], [SkillName], [SkillLevel]) VALUES (1, N'C# Programming', N'3')
INSERT [dbo].[Skills] ([Id], [SkillName], [SkillLevel]) VALUES (2, N'Java', N'2')
INSERT [dbo].[Skills] ([Id], [SkillName], [SkillLevel]) VALUES (3, N'HTML', N'2')
INSERT [dbo].[Skills] ([Id], [SkillName], [SkillLevel]) VALUES (4, N'CSS', N'2')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
/****** Object:  Index [FK_Resume]    Script Date: 9.10.2023 14:19:58 ******/
ALTER TABLE [dbo].[Resume] ADD  CONSTRAINT [FK_Resume] UNIQUE NONCLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Certificate] FOREIGN KEY([CertificateId])
REFERENCES [dbo].[Certificate] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Certificate]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Courses] FOREIGN KEY([CoursesId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Courses]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Education] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Education]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Employment] FOREIGN KEY([EmploymentId])
REFERENCES [dbo].[Employment] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Employment]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Hobbies] FOREIGN KEY([HobbiesId])
REFERENCES [dbo].[Hobbies] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Hobbies]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Internship] FOREIGN KEY([InternshipId])
REFERENCES [dbo].[Internship] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Internship]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Languages]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_PersonalDetails] FOREIGN KEY([PersonId])
REFERENCES [dbo].[PersonalDetails] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_PersonalDetails]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Qualities] FOREIGN KEY([QualitiesId])
REFERENCES [dbo].[Qualities] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Qualities]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_References] FOREIGN KEY([ReferenceId])
REFERENCES [dbo].[References] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_References]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Skills] FOREIGN KEY([SkillsId])
REFERENCES [dbo].[Skills] ([Id])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Skills]
GO
/****** Object:  StoredProcedure [dbo].[CreatePerson]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreatePerson]
(
    @Name VARCHAR(100),
    @LastName VARCHAR(100),
    @Email VARCHAR(150),
	@Headline VARCHAR(MAX),
	@PhoneNumber VARCHAR(50),
	@City VARCHAR(50),
	@BirthDate DATE,
	@DriverLicence BIT
)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @NewId uniqueidentifier = NEWID();


    INSERT INTO PersonalDetails (Id, Name, LastName, Email, Headline, PhoneNumber, City, DateOfBirth, DriverLicence)
    VALUES (@NewId, @Name, @LastName, @Email, @Headline, @PhoneNumber, @City, @BirthDate, @DriverLicence);
END;	
GO
/****** Object:  StoredProcedure [dbo].[CreateResume]    Script Date: 9.10.2023 14:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateResume]
(
    @Name VARCHAR(100),
    @LastName VARCHAR(100),
    @ResumeTitle VARCHAR(255) -- Resume başlığı veya diğer gerekli parametreler
)
AS
BEGIN
    SET NOCOUNT ON;

    -- İsim ve soyisim bilgilerine göre ilgili kişinin PersonId'sini alın
	DECLARE @Id Uniqueidentifier = NEWID();
    DECLARE @PersonId UNIQUEIDENTIFIER;
    SELECT @PersonId = Id
    FROM PersonalDetails
    WHERE Name = @Name AND LastName = @LastName;

    -- Kişinin bilgilerini alın
    DECLARE @Email VARCHAR(150);
    DECLARE @PhoneNumber VARCHAR(50);
	DECLARE @Address VARCHAR(MAX);
	DECLARE @Headline VARCHAR(MAX);
	DECLARE @DateOfBirth Date;
	DECLARE @DriverLicence BIT;
    -- İhtiyaca göre diğer bilgileri de alabilirsiniz

    SELECT @Email = Email, @PhoneNumber = PhoneNumber, @Address = Address, @Headline = Headline, @DateOfBirth = DateOfBirth, @DriverLicence = DriverLicence
    FROM PersonalDetails
    WHERE Id = @PersonId;

    -- Resume tablosuna yeni bir kayıt eklemek için INSERT sorgusu
    INSERT INTO Resume (Id, PersonId , Name, LastName, PhoneNumber, Email, Address , ProfileAbout , Title, EmploymentId, EducationId)
    VALUES (@Id, @PersonId, @Name, @LastName, @PhoneNumber, @Email , @Address,  @ResumeTitle, @Headline , '1' , '2');
END;



GO
